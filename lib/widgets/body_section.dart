import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monstarev/getStarted/get_started.dart';
import 'package:monstarev/widgets/button.dart';
import 'package:monstarev/widgets/gitHub_button.dart';
import 'package:monstarev/widgets/top_bar.dart';
import 'package:provider/provider.dart';
import '../components/buttons/button_2.dart';
import '../components/checkBox_widget.dart';
import '../components/component_codes.dart';
import '../components/creditCard_widget.dart';
import '../components/datepicker_widget.dart';
import '../components/dock_containerWidget.dart';
import '../components/dropDown_widget.dart';
import '../components/errorMessage_widget.dart';
import '../components/gradient_widget.dart';
import '../components/iconContainer_widget.dart';
import '../components/notificationSent_widget.dart';
import '../components/paidWidgets/notification_widget.dart';
import '../components/paidWidgets/search_textField_container.dart';
import '../components/paidWidgets/social_buttons.dart';
import '../components/paidWidgets/tweetCard_widget.dart';
import '../components/radioButton_widget.dart';
import '../components/searchBar_widget.dart';
import '../components/shimmer_glowing_burron.dart';
import '../components/slider_widget.dart';
import '../components/successMessage_widget.dart';
import '../components/switch_widget.dart';
import '../components/tabBar_widget.dart';
import '../components/textField/password_textField.dart';
import '../components/textField/text_field_1.dart';
import '../components/introduction_container.dart';
import '../presentation/container/universal_container.dart';
import '../provider/theme_changer.dart';

class Body extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    final ScrollController scrollController = ScrollController();
    return LayoutBuilder(
      builder: (context, constraints) {
        double paddingValue = constraints.maxWidth < 1000 ? 20.0 : 100.0;
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: scrollController,
          // primary: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: paddingValue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopBar(
                  themeChanger: themeChanger,
                ),

                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 1000) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Flutter components to build',
                                style: GoogleFonts.arimo(
                                  decoration: TextDecoration.none,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'beautiful & scaleable  ',
                                    style: GoogleFonts.arimo(
                                      decoration: TextDecoration.none,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    // height: 60,
                                    // width: 270,
                                    child: DefaultTextStyle(
                                      style: GoogleFonts.arimo(
                                        decoration: TextDecoration.none,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                      ),
                                      child: AnimatedTextKit(
                                        pause: Durations.extralong3,
                                        repeatForever: true,
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                            'Website',
                                            textStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  216, 49, 32, 1),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'Apps',
                                            textStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  216, 49, 32, 1),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            '& More.',
                                            textStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  216, 49, 32, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            '''MonstaRev_ is a webApp which provides you with 20+ animated components built with Flutter and its Packages. Which are ready to use with your workflow helping you to save thousands of hours.''',
                            style: GoogleFonts.arimo(
                              decoration: TextDecoration.none,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonMain(
                                buttonName: 'Get Started',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GitHubButton(
                                buttonName: 'Star on GitHub',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Free, no signups, no credit cards.',
                            style: GoogleFonts.arimo(
                              decoration: TextDecoration.none,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 120,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Flutter components to build',
                                style: GoogleFonts.arimo(
                                  decoration: TextDecoration.none,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'beautiful & scaleable  ',
                                    style: GoogleFonts.arimo(
                                      decoration: TextDecoration.none,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 60,
                                    width: 270,
                                    child: DefaultTextStyle(
                                      style: GoogleFonts.arimo(
                                        decoration: TextDecoration.none,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50,
                                      ),
                                      child: AnimatedTextKit(
                                        pause: Durations.extralong3,
                                        repeatForever: true,
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                            'Website',
                                            textStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  216, 49, 32, 1),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'Apps',
                                            textStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  216, 49, 32, 1),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            '& More.',
                                            textStyle: TextStyle(
                                              color: Color.fromRGBO(
                                                  216, 49, 32, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            '''MonstaRev_ is a webApp which provides you with 20+ animated components built with Flutter and its Packages.\n Which are ready to use with your workflow helping you to save thousands of hours.''',
                            style: GoogleFonts.arimo(
                              decoration: TextDecoration.none,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NavigationRailExample()),
                                  );
                                },
                                child: ButtonMain(
                                  buttonName: 'Get Started',
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GitHubButton(
                                buttonName: 'Star on GitHub',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Free, no signups, no credit cards.',
                            style: GoogleFonts.arimo(
                              decoration: TextDecoration.none,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
                // Align(
                //     alignment: Alignment.centerLeft,
                //     child: Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 110.0),
                //       child: BouncingContainer(),
                //     )),

                // const Wrap(
                //   spacing: 20,
                //   runSpacing: 20,
                //   children: [
                //     // RainAnimation(),
                //     SocialButtons(
                //       containerName: 'Social Buttons',
                //       buttonName: 'Google',
                //       codeSnippet: ComponentCodes.SocialButtons,
                //     ),
                //     TweetCardWidget(
                //       containerName: 'Tweet Card Widget',
                //       codeSnippet: ComponentCodes.TweetCard,
                //     ),
                //     NotificationWidget(
                //       containerName: 'Notification Containers',
                //       codeSnippet: ComponentCodes.notificationContainer,
                //     ),
                //     SearchTextField(
                //       containerName: 'SearchBar Container',
                //       codeSnippet: 'ss',
                //     ),
                //     DockContainer(
                //       containerName: 'Dock Container',
                //       codeSnippet: ComponentCodes.DockContainer,
                //     ),
                //     // Fake(
                //     //   containerName: 'Social Buttons',
                //     //   buttonName: 'Google',
                //     //   codeSnippet: ComponentCodes.SocialButtons,
                //     // ),
                //     IntroductionContainer(),
                //   ],
                // ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    const UniversalContainerContainer(
                      ContainerName: 'Button',
                      newWidget: Button2(buttonName: 'CLICK'),
                      codeSnippet: ComponentCodes.Button,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'Switch',
                      newWidget: SwitchWidget(),
                      codeSnippet: ComponentCodes.Switch,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'Error Message',
                      newWidget: ErrorMessageWidget(),
                      codeSnippet: ComponentCodes.ErrorMessage,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'CheckBox',
                      newWidget: CheckBoxWidget(),
                      codeSnippet: ComponentCodes.CheckBox,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'Button',
                      newWidget: TextField2(hintText: 'Placeholder'),
                      codeSnippet: ComponentCodes.TextField,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'TabBar',
                      newWidget: TabBarWidget(),
                      codeSnippet: ComponentCodes.TabBar,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'Slider',
                      newWidget: SliderWidget(),
                      codeSnippet: ComponentCodes.Slider,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'SearchBox',
                      newWidget: SearchBarWidget(
                        hintText: 'Search',
                      ),
                      codeSnippet: ComponentCodes.SearchBar,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'RadioButton',
                      newWidget: RadioButtonWidget(),
                      codeSnippet: ComponentCodes.RadioButton,
                    ),
                    UniversalContainerContainer(
                      ContainerName: 'DateTime Selector',
                      newWidget: DateTimeWidget(),
                      codeSnippet: ComponentCodes.DateTime,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'CustomCard',
                      newWidget: CreditCardWidget(),
                      codeSnippet: ComponentCodes.CustomCard,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'Custom DropBox',
                      newWidget: DropDownWidget(),
                      codeSnippet: ComponentCodes.DropDown,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'Success Message',
                      newWidget: SuccessMessageWidget(),
                      codeSnippet: ComponentCodes.SuccessMessage,
                    ),
                    UniversalContainerContainer(
                      ContainerName: 'AnimatedButton',
                      newWidget: ToggleButtonWidget(),
                      codeSnippet: ComponentCodes.AnimatedButton,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'PasswordTextField',
                      newWidget: PasswordTextFieldWidget(),
                      codeSnippet: ComponentCodes.PasswordField,
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'MessageSent Alert',
                      codeSnippet: ComponentCodes.MessageSentAlert,
                      newWidget: NotificationSentWidget(),
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'Glowing Button',
                      codeSnippet: ComponentCodes.GlowingButton,
                      newWidget: GlowingButton(),
                    ),
                    const UniversalContainerContainer(
                      ContainerName: 'MessageSent Alert',
                      codeSnippet: ComponentCodes.MessageSentAlert,
                      newWidget: NotificationSentWidget(),
                    ),
                    DockContainer(
                      codeSnippet: ComponentCodes.DockContainer,
                      containerName: 'Dock Container',
                    ),
                    const IconContainerWidget(),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                // Container(
                //   height: 0.5,
                //   width: MediaQuery.sizeOf(context).width * 0.5,
                //   color: Theme.of(context).colorScheme.onBackground,
                // ),
                // const SizedBox(
                //   height: 50,
                // ),
                // InfoSection(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 0.8,
                      width: double.infinity,
                      color: Colors.grey.shade800,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Bought to you by Ayush',
                            style: GoogleFonts.spaceGrotesk(
                              decoration: TextDecoration.none,
                              color: Theme.of(context).colorScheme.tertiary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
