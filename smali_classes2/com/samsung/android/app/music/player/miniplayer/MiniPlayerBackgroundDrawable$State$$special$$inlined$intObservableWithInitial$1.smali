.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty<",
        "Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

.field private c:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->c:I

    .line 361
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b()Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    move-result-object p1

    const/4 p2, 0x1

    .line 362
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;",
            "Lkotlin/reflect/KProperty<",
            "*>;)I"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->c:I

    return p1
.end method

.method public final a(I)V
    .locals 1

    .line 282
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->c:I

    if-eq v0, p1, :cond_0

    .line 283
    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->c:I

    .line 284
    iget p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->c:I

    .line 365
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b()Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    move-result-object p1

    const/4 v0, 0x1

    .line 366
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;",
            "Lkotlin/reflect/KProperty<",
            "*>;I)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;->a(I)V

    return-void
.end method
