.class public Lcom/devbrackets/android/exomedia/util/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;
    }
.end annotation


# static fields
.field protected static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->a:Ljava/util/List;

    .line 36
    sget-object v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->a:Ljava/util/List;

    new-instance v1, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;

    const-string v2, "Amazon"

    invoke-direct {v1, v2}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public a(Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;",
            ">;)Z"
        }
    .end annotation

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;

    .line 58
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 63
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil$NonCompatibleDevice;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const-string v0, "uimode"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method
