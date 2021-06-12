.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "screen_off_music"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;Z)Z

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)V

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setPackageDoNotKill(Ljava/lang/Class;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
