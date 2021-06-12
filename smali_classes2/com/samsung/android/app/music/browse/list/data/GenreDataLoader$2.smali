.class Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory<",
        "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 39
    new-instance p2, Lcom/samsung/android/app/music/browse/list/cursor/GenreModelCursor;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/browse/list/cursor/GenreModelCursor;-><init>(Ljava/util/List;)V

    return-object p2
.end method
