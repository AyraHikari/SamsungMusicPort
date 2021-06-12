.class public Landroid/support/v7/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;
.implements Landroid/support/v4/widget/AutoSizeableTextView;


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 75
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    new-instance p1, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 82
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 84
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 85
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 86
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 341
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 322
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 303
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 306
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 360
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 367
    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 282
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 283
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeTextType()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 130
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 158
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 372
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/AppCompatHintHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 182
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/AppCompatTextHelper;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 202
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz p1, :cond_0

    sget-boolean p1, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatTextHelper;->autoSizeText()V

    :cond_0
    return-void
.end method

.method public seslSetButtonShapeEnabled(Z)V
    .locals 6

    .line 391
    const-class v0, Landroid/widget/TextView;

    const-string v1, "semSetButtonShapeEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p0, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public seslSetButtonShapeEnabled(ZI)V
    .locals 7

    .line 421
    const-class v0, Landroid/widget/TextView;

    const-string v1, "semSetButtonShapeEnabled"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 241
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 263
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 218
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeWithDefaults(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 91
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 190
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void
.end method
