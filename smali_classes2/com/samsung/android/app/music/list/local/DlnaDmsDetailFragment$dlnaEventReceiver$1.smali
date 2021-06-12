.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.app.music.dlna.flat.searching.info"

    .line 73
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c(Z)V

    return-void

    :cond_0
    const-string v0, "com.sec.android.app.music.dlna.flat.searching.extra.what"

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "UiList"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dlnaEventReceiver action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " what : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c(Z)V

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c(Z)V

    .line 88
    :goto_0
    :pswitch_3
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    goto :goto_1

    :cond_1
    const-string v0, "com.sec.android.app.music.dlna.flat.searching.error"

    .line 101
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.sec.android.app.music.dlna.flat.searching.extra.error"

    .line 102
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.sec.android.app.music.dlna.extra.deviceId"

    .line 103
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UiList"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dlnaEventReceiver action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " what : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " deviceId : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 110
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaEventReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c(Z)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
