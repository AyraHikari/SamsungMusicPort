.class Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$2;
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
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)V
    .locals 1

    const-string p1, "GenreReorderFragment"

    const-string v0, "saveGenreOrders. done"

    .line 190
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$2;->a(Lcom/samsung/android/app/music/model/ResponseModel;)V

    return-void
.end method
