.class Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundButtonCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 82
    sget-boolean v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 84
    :try_start_0
    const-class v1, Landroid/widget/CompoundButton;

    const-string v2, "mButtonDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 85
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CompoundButtonCompat"

    const-string v3, "Failed to retrieve mButtonDrawable field"

    .line 87
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_0
    sput-boolean v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    .line 92
    :cond_0
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    :try_start_1
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string v0, "CompoundButtonCompat"

    const-string v2, "Failed to get button drawable via reflection"

    .line 96
    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    :cond_1
    return-object v1
.end method

.method public getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 62
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 75
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 56
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 69
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
