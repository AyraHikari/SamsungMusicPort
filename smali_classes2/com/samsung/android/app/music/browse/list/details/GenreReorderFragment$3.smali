.class Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$3;->a:Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "GenreReorderFragment"

    const-string v1, "saveGenreOrders"

    .line 195
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$3;->a(Ljava/lang/Throwable;)V

    return-void
.end method
