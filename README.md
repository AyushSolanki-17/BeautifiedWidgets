# Beautified Widgets Package for Flutter

Beautified Widgets is an package which contains basic flutter widgets like text, buttons etc.. **REDESIGNED** in a beautified way!! This is an open-source project which is absolutely free to use for both commercial and educational purposes. We will try to produce as much as redesigned widgets as possible to make Flutter Developers UI development faster.

## How to Add this Package in Flutter App

In you ***pubspec.yaml*** file add the following lines of code under the **dependency** section.

```dart
  beautified_widgets: ^0.0.1
```

## How to use the widgets

There are few widgets with the base theme available in the first version of the package.

### Beautified Container

Beautified Container is a basic container object with some margin as well as padding. You can use it in the following way

```dart
BeautifiedContainer(
  child: OtherWidget()
)
```

### Beautified Text Elements

We also have redesigned the text element to support typography with **heading, paragraph, bold and italic styles**.

Using following syntax you can define **Heading Text**

```dart
BeautifiedText(textStyles: BeautifiedTextStyles.heading, text: "This is Heading")
```

**Paragraph Text**

```dart
BeautifiedText(textStyles: BeautifiedTextStyles.paragraph, text: "This is Paragraph")
```

**Bold Text**

```dart
BeautifiedText(textStyles: BeautifiedTextStyles.bold, text: "This is Bold Text")
```

**Italic Text**

```dart
BeautifiedText(textStyles: BeautifiedTextStyles.italic, text: "This is Italic Text")
```


### Beautified Buttons

#### Text Buttons

We have also created a basic theme and provided buttons according to the theme. There are various styles of buttons specified in Beautified Buttons

```dart
// Primary Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.primary, onPressed: (){},buttonText: "Primary Button",)

// Primary Dark Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.primaryDark, onPressed: (){},buttonText: "Primary Dark Button",)

// Primary Light Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.primaryLight, onPressed: (){},buttonText: "Primary Light Button",)

// Dark Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.dark, onPressed: (){},buttonText: "Dark Button",)

// Light Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.light, onPressed: (){},buttonText: "Light Button",)

// Success Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.success, onPressed: (){},buttonText: "Success Button",)

// Danger Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.danger, onPressed: (){},buttonText: "Danger Button",)

```

#### Social Media Buttons

We also have social media buttons for social media intergration. dont forget to check out them :)

```dart
// Google Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.googleRectangle, onPressed: (){},buttonText: "SignIn With Google",)

// Facebook Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.facebookRectangle, onPressed: (){},buttonText: "SignIn With Facebook",)

// Twitter Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.twitterRectangle, onPressed: (){},buttonText: "SignIn With Twitter",)

// Github Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.githubRectangle, onPressed: (){},buttonText: "SignIn With Github",)

// Microsoft Button
BeautifiedButton(buttonType: BeautifiedButtonStyles.microsoftRectangle, onPressed: (){},buttonText: "SignIn With Microsoft",)
```
