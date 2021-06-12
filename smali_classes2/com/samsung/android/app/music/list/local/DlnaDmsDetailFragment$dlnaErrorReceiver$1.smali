.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;
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

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

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

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.app.music.dlna.connectivitychanged"

    .line 125
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.sec.android.app.music.dlna.connectivitychanged.extra.what"

    const/4 v0, -0x1

    .line 127
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "com.sec.android.app.music.dlna.extra.deviceId"

    .line 129
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->b(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$dlnaErrorReceiver$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->c(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method
