.class Lcom/samsung/android/app/music/player/RepeatController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/RepeatController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/RepeatController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/RepeatController;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController$2;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "RepeatController"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick tag enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController$2;->a:Lcom/samsung/android/app/music/player/RepeatController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/RepeatController;->a(Lcom/samsung/android/app/music/player/RepeatController;Z)Z

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController$2;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/RepeatController;->e(Lcom/samsung/android/app/music/player/RepeatController;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 162
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->radioToggleMode(I)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleRepeat()V

    goto :goto_0

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController$2;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/RepeatController;->f(Lcom/samsung/android/app/music/player/RepeatController;)Z

    move-result p1

    if-nez p1, :cond_3

    const v0, 0x80002

    const/16 v1, 0x3e80

    const/4 v2, 0x0

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController$2;->a:Lcom/samsung/android/app/music/player/RepeatController;

    .line 169
    invoke-static {p1}, Lcom/samsung/android/app/music/player/RepeatController;->g(Lcom/samsung/android/app/music/player/RepeatController;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "radio_control"

    const/4 v5, 0x1

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a(IILjava/lang/String;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)V

    .line 171
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController$2;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/RepeatController;->b(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    const-string v2, "fullplayer_click_repeat"

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
