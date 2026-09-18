import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import '../data/model/send_email_model.dart';
import '../data/repo/contact_repo.dart';
import 'contact_states.dart';

class ContactCubit extends Cubit<ContactStates> with CubitLifeCycleMixin<ContactStates> {
  final ContactRepo _repo;
  ContactCubit(this._repo) : super(const ContactStates());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  Future<void> sendPortfolioEmail() async {
    safeEmit(state.copyWith(sendEmailState: const RequestState.isLoading()));
    try {
      await _repo.sendPortfolioEmail(SendEmailModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        message: messageController.text,
      ));
      nameController.clear();
      emailController.clear();
      phoneController.clear();
      messageController.clear();
      safeEmit(state.copyWith(sendEmailState: const RequestState.isSuccess(true)));
    } catch (e) {
      safeEmit(state.copyWith(sendEmailState: RequestState.isError(e.toString())));
    }
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    return super.close();
  }
}
