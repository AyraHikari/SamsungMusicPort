.class public final Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;->invoke()Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;->this$0:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onReceiveMediaState(Landroid/content/Intent;)V

    return-void
.end method
