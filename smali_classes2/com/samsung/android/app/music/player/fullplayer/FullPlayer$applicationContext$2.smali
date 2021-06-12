.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$applicationContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$applicationContext$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/Context;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$applicationContext$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$applicationContext$2;->invoke()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
