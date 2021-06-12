.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;
.super Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater<",
        "Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Integer;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;->b:Ljava/lang/Object;

    .line 81
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;-><init>(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;->a(Ljava/lang/Object;)V

    .line 86
    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 361
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 89
    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 363
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
