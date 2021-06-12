.class interface abstract Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SeslTimePickerDelegate"
.end annotation


# virtual methods
.method public abstract dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract getBaseline()I
.end method

.method public abstract getDefaultHeight()I
.end method

.method public abstract getDefaultWidth()I
.end method

.method public abstract getEditText(I)Landroid/widget/EditText;
.end method

.method public abstract getHour()I
.end method

.method public abstract getMinute()I
.end method

.method public abstract getNumberPicker(I)Landroid/support/v7/widget/SeslNumberPicker;
.end method

.method public abstract is24Hour()Z
.end method

.method public abstract isEditTextMode()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public abstract onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.end method

.method public abstract setCurrentLocale(Ljava/util/Locale;)V
.end method

.method public abstract setEditTextMode(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHour(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
.end method

.method public abstract setIs24Hour(Z)V
.end method

.method public abstract setMinute(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param
.end method

.method public abstract setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;)V
.end method

.method public abstract setOnTimeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;)V
.end method

.method public abstract startAnimation(ILandroid/support/v7/widget/SeslAnimationListener;)V
.end method
