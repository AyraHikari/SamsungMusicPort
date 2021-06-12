.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;->invoke()Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    iget-object p2, p2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->e(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a(J)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->f(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    move-result-object p1

    const p2, 0x7f13054f

    .line 80
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(IZ)V

    :cond_1
    return-void

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    return-void
.end method
