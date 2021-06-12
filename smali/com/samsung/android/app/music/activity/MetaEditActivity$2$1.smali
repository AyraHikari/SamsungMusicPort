.class Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/MetaEditActivity$2;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->d(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->e(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    const/4 v1, 0x0

    const v2, 0x7f0b00fd

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->f(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    .line 156
    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->g(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->h(Lcom/samsung/android/app/music/activity/MetaEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->reloadCurrentPlayingItem(Z)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->finish()V

    return-void
.end method
