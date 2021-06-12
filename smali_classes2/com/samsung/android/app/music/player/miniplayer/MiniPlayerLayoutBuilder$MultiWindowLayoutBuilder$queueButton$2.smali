.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$queueButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$queueButton$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$queueButton$2;->this$0:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->h(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f130414

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$queueButton$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
