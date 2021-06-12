.class Lcom/samsung/android/app/music/service/milk/MilkService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/MilkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$2;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p2, "my_music_mode_option"

    .line 281
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 282
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "MilkService"

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocalMusicModeChanged isOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$2;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/MilkService;->b(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/SyncManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a(Z)V

    :cond_0
    return-void
.end method
