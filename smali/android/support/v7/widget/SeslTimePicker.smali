.class public Landroid/support/v7/widget/SeslTimePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslTimePicker$AbstractTimePickerDelegate;,
        Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;,
        Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;,
        Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field public static final PICKER_AMPM:I = 0x2

.field public static final PICKER_HOUR:I = 0x0

.field public static final PICKER_MINUTE:I = 0x1


# instance fields
.field private mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101049d

    .line 108
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 140
    new-instance v6, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;-><init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getBaseline()I
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->getEditText(I)Landroid/widget/EditText;

    move-result-object p1

    return-object p1
.end method

.method public getHour()I
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 1

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->getNumberPicker(I)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    return-object p1
.end method

.method public is24HourView()Z
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->is24Hour()Z

    move-result v0

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 349
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 157
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 159
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->getDefaultWidth()I

    move-result p1

    .line 160
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 163
    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {p2}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->getDefaultHeight()I

    move-result p2

    .line 164
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 166
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 335
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 320
    check-cast p1, Landroid/view/View$BaseSavedState;

    .line 321
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 313
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 314
    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setEditTextMode(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 269
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setHour(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-static {p1, v1, v2}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setHour(I)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setIs24Hour(Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setMinute(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {p1, v1, v2}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setOnTimeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;)V
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->setOnTimeChangedListener(Landroid/support/v7/widget/SeslTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public startAnimation(ILandroid/support/v7/widget/SeslAnimationListener;)V
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePicker;->mDelegate:Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/SeslTimePicker$SeslTimePickerDelegate;->startAnimation(ILandroid/support/v7/widget/SeslAnimationListener;)V

    return-void
.end method
