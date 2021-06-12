.class public Lcom/samsung/android/app/music/MusicLegalPermissionRequester;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->a:[Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->b:[Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->b:[Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->c:[Ljava/lang/String;

    .line 28
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 33
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->a()Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x14000000

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
