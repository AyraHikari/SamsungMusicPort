.class final Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->b(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V

    return-void
.end method
