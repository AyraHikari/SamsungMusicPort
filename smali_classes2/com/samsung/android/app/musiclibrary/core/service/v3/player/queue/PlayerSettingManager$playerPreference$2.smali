.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$playerPreference$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$playerPreference$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$playerPreference$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)Landroid/content/Context;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$playerPreference$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->access$isTest$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "test_music_service_pref"

    goto :goto_0

    :cond_0
    const-string v1, "music_service_pref"

    :goto_0
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$playerPreference$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
