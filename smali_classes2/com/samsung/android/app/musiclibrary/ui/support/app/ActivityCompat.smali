.class public Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a()Ljava/lang/reflect/Method;
    .locals 3

    .line 62
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "getWindowStackId"

    const/4 v2, 0x0

    .line 63
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x80000

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :goto_0
    return-void
.end method
