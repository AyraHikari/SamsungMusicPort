.class Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$2;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$2;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$2;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->c(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(IZ)V

    return-void
.end method
