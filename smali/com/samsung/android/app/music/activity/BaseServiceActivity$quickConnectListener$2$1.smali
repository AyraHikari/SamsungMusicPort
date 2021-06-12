.class final Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;->invoke()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected()V
    .locals 3

    const-string v0, "SMUSIC-QuickConnect"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " QuickConnectListener() onItemSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onQuickConnectSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
