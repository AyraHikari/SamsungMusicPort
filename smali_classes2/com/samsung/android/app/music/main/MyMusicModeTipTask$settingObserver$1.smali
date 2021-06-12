.class final Lcom/samsung/android/app/music/main/MyMusicModeTipTask$settingObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicModeTipTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$settingObserver$1;->a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "my_music_mode_option"

    .line 113
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicModeTipTask$settingObserver$1;->a:Lcom/samsung/android/app/music/main/MyMusicModeTipTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;->c(Lcom/samsung/android/app/music/main/MyMusicModeTipTask;)V

    :cond_0
    return-void
.end method
