.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "my_music_mode_option"

    .line 379
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 380
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->e(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    .line 381
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    goto :goto_0

    :cond_0
    const-string p2, "mobile_data"

    .line 382
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 383
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->d(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    :cond_1
    :goto_0
    return-void
.end method
