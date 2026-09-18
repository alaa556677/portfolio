import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import '../logic/contact_cubit.dart';
import '../logic/contact_states.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  var formKey = GlobalKey <FormState> ();
  final ContactCubit contactCubit = getIt();

  String? _requiredValidator(String? value) {
    if (value == null || value.toString().isEmpty) {
      return "Required";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PortfolioManager.textForm(TextFormModel(
                controller: contactCubit.nameController,
                hintText: "Full Name",
                prefixIcon: Icons.person,
                filledColor: Colors.transparent,
                enabledBorderColor: AppColors.textSecondary(context),
                validator: _requiredValidator,
              )),
              SizedBox(height: 20,),
              PortfolioManager.textForm(TextFormModel(
                controller: contactCubit.emailController,
                hintText: "Email",
                prefixIcon: Icons.email,
                filledColor: Colors.transparent,
                enabledBorderColor: AppColors.textSecondary(context),
                validator: _requiredValidator,
              )),
              SizedBox(height: 20,),
              PortfolioManager.textForm(TextFormModel(
                controller: contactCubit.phoneController,
                hintText: "Phone",
                prefixIcon: Icons.phone_android,
                filledColor: Colors.transparent,
                enabledBorderColor: AppColors.textSecondary(context),
                validator: _requiredValidator,
              )),
              SizedBox(height: 20,),
              PortfolioManager.textForm(TextFormModel(
                controller: contactCubit.messageController,
                hintText: "Write message",
                prefixIcon: Icons.message,
                minLines: 5,
                maxLines: 8,
                filledColor: Colors.transparent,
                enabledBorderColor: AppColors.textSecondary(context),
                validator: _requiredValidator,
              )),
              SizedBox(height: 30,),
              BlocBuilder<ContactCubit, ContactStates>(
                bloc: contactCubit,
                buildWhen: (previous, current) => previous.sendEmailState != current.sendEmailState,
                builder: (context, state) => Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    state.sendEmailState.isLoading ? Padding(
                      padding: EdgeInsetsDirectional.only(end: 14),
                      child: PortfolioManager.loadingWidget(),
                    ) : InkWell(
                      onTap: () async {
                        if(formKey.currentState!.validate()){
                          await contactCubit.sendPortfolioEmail();
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.textSecondary(context),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 8),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            PortfolioManager.text(TextModel(
                              text: "Send",
                              style: PortfolioManager.style(textType: TextTypes.buttonTextMedium14).copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: AppColors.textTransparent,
                              ),
                            )),
                            SizedBox(width: 6,),
                            Icon(Icons.send, size: 16, color: AppColors.textTransparent,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
