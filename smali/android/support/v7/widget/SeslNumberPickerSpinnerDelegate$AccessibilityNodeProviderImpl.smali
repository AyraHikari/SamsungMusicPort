.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 2839
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2848
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 2850
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 2852
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 3229
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3230
    const-class v1, Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3231
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3232
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 3234
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3235
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3237
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3238
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3239
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3242
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3243
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3244
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3246
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 3247
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3246
    invoke-static {v1}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result v1

    .line 3249
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3250
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3251
    invoke-static {v3, v1}, Landroid/support/v4/graphics/SeslRectReflector;->scale(Landroid/graphics/Rect;F)V

    .line 3252
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3253
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isVisibleToUserWrapper()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3256
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3257
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 3258
    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 3259
    invoke-static {v3, v1}, Landroid/support/v4/graphics/SeslRectReflector;->scale(Landroid/graphics/Rect;F)V

    .line 3260
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3262
    iget p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    const/16 p1, 0x40

    .line 3263
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x80

    .line 3265
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3267
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3268
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_4

    :cond_3
    const/16 p1, 0x1000

    .line 3269
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3271
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_6

    :cond_5
    const/16 p1, 0x2000

    .line 3272
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 3196
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3197
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3198
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3199
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3200
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3201
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 3202
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3203
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3204
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3205
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3206
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3207
    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v1}, Landroid/support/v7/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3208
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3210
    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3211
    iget-object p4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p4, p4, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 3212
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3213
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3215
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p1, 0x40

    .line 3216
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    .line 3218
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3220
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    .line 3221
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .line 3167
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3168
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3169
    iget v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 3170
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x40

    .line 3171
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 3173
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x80

    .line 3174
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3176
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3177
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3178
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 3179
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3180
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 3182
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3183
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3184
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3185
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3187
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3188
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    .line 3189
    aget p2, p1, v4

    aget p1, p1, v3

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 3190
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3156
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 3157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3158
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 3159
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 3148
    :pswitch_1
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 3149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3150
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 3151
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3141
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 3142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3143
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3144
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualCurrentButtonText()Ljava/lang/String;
    .locals 4

    .line 3312
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    .line 3313
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3314
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3316
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 3318
    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 4

    .line 3288
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3289
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3290
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3292
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 3294
    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 4

    .line 3300
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3301
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3302
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3304
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 3306
    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$4200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .line 3280
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .line 3284
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    .line 3126
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3127
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 3128
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3129
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3130
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3131
    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3132
    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 3133
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    .line 3115
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3700(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3116
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 3117
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3118
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3119
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 3120
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12

    .line 2856
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getLeft()I

    move-result v0

    .line 2857
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v1

    .line 2858
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getTop()I

    move-result v2

    .line 2859
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v3

    .line 2860
    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getScrollX()I

    move-result v8

    .line 2861
    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getScrollY()I

    move-result v9

    .line 2862
    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 2863
    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_1

    :cond_0
    if-eq p1, v5, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 2885
    :cond_1
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2887
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    :cond_2
    return-object p1

    :pswitch_0
    const/4 v6, 0x3

    .line 2880
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 2881
    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr v1, v0

    add-int v10, v8, v1

    sub-int/2addr v3, v2

    add-int v11, v9, v3

    move-object v5, p0

    move v9, p1

    .line 2879
    invoke-direct/range {v5 .. v11}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2874
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 2875
    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int/2addr p1, v2

    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 2877
    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2874
    invoke-direct {p0, v8, p1, v1, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 v6, 0x1

    .line 2870
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v7

    sub-int/2addr v1, v0

    add-int v10, v8, v1

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 2872
    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    add-int v11, p1, v0

    move-object v5, p0

    .line 2869
    invoke-direct/range {v5 .. v11}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_3
    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    sub-int/2addr v3, v2

    add-int/2addr v3, v9

    .line 2866
    invoke-direct {p0, v8, v9, v1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2895
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2898
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2899
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 2918
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2913
    :pswitch_0
    invoke-direct {p0, v0, p2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_1
    const/4 p1, 0x1

    .line 2902
    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x2

    .line 2904
    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    const/4 p1, 0x3

    .line 2906
    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 10

    .line 2923
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$700(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2927
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    .line 2928
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v2

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    const/16 v5, 0x80

    const/16 v6, 0x40

    const/4 v7, 0x1

    if-eq p1, v3, :cond_17

    const/high16 v3, 0x10000

    const v8, 0x8000

    const/16 v9, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eq p2, v9, :cond_5

    if-eq p2, v6, :cond_3

    if-eq p2, v5, :cond_1

    return v1

    .line 3048
    :cond_1
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    .line 3049
    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3050
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3052
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p2

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_2
    return v1

    .line 3039
    :cond_3
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    .line 3040
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3041
    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3043
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p2

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_4
    return v1

    .line 3029
    :cond_5
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3030
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3031
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3032
    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3034
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_6
    return v1

    :pswitch_1
    if-eq p2, v9, :cond_f

    const/16 v2, 0x20

    if-eq p2, v2, :cond_d

    if-eq p2, v6, :cond_b

    if-eq p2, v5, :cond_9

    packed-switch p2, :pswitch_data_1

    .line 3022
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2983
    :pswitch_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2984
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return v7

    :cond_7
    return v1

    .line 2978
    :pswitch_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2979
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    :cond_8
    return v1

    .line 3013
    :cond_9
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    .line 3014
    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3015
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3017
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p3

    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_a
    return v1

    .line 3004
    :cond_b
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    .line 3005
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3006
    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3008
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p3

    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_c
    return v1

    .line 2997
    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2998
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->performLongClick()V

    return v7

    :cond_e
    return v1

    .line 2990
    :cond_f
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2991
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    return v7

    :cond_10
    return v1

    :pswitch_4
    if-eq p2, v9, :cond_15

    if-eq p2, v6, :cond_13

    if-eq p2, v5, :cond_11

    return v1

    .line 3080
    :cond_11
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_12

    .line 3081
    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3082
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3084
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p2

    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_12
    return v1

    .line 3071
    :cond_13
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_14

    .line 3072
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3073
    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3075
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p2

    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_14
    return v1

    .line 3061
    :cond_15
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 3062
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3063
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3064
    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3066
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_16
    return v1

    :cond_17
    if-eq p2, v6, :cond_20

    if-eq p2, v5, :cond_1e

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_1b

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_18

    .line 3091
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2965
    :cond_18
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 2966
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_1a

    .line 2967
    :cond_19
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2968
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2969
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_1a
    return v1

    .line 2956
    :cond_1b
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 2957
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_1d

    .line 2958
    :cond_1c
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2959
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2960
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v7}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_1d
    return v1

    .line 2944
    :cond_1e
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1f

    .line 2945
    iput v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2948
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {p1}, Landroid/support/v4/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    return v7

    :cond_1f
    return v1

    .line 2934
    :cond_20
    iget p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_21

    .line 2935
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2938
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {p1}, Landroid/support/v4/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    return v7

    :cond_21
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3106
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3108
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3107
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3103
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 3097
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3099
    invoke-direct {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3098
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
