.class public Lcom/samsung/android/app/music/network/init/StartClientPermissions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/network/init/StartClientPermissions;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/network/init/StartClientPermissions;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .line 27
    invoke-static {p0}, Lcom/samsung/android/app/music/network/init/StartClientPermissions;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "StartClientPermissions"

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPermissionStateChanged. granted ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.musiclibrary.action.api_permission_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
