.class Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatCompoundButtonHelper$DirectSetButtonDrawableInterface;
    }
.end annotation


# instance fields
.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 37
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 39
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 51
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method applyButtonTint()V
    .locals 2

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroid/support/v4/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 116
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_4

    .line 117
    :cond_0
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 122
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 127
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 130
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method getCompoundPaddingLeft(I)I
    .locals 2

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroid/support/v4/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 55
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->CompoundButton:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    :try_start_0
    sget p2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    sget p2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 63
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_0
    sget p2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 67
    iget-object p2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 67
    invoke-static {p2, v0}, Landroid/support/v4/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 70
    :cond_1
    sget p2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 71
    iget-object p2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    const/4 v1, -0x1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 71
    invoke-static {p2, v0}, Landroid/support/v4/widget/CompoundButtonCompat;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    throw p2
.end method

.method onSetButtonDrawable()V
    .locals 1

    .line 104
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    return-void
.end method

.method setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 82
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    return-void
.end method

.method setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    return-void
.end method
