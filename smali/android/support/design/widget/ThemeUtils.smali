.class Landroid/support/design/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 1

    .line 29
    sget-object v0, Landroid/support/design/widget/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 31
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
