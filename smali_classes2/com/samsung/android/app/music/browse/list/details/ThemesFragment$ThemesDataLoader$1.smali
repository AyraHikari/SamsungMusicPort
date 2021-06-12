.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory<",
        "Lcom/samsung/android/app/music/model/base/TagModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 282
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
            "Lcom/samsung/android/app/music/model/base/TagModel;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 285
    new-instance p2, Lcom/samsung/android/app/music/browse/list/cursor/TagModelCursor;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/browse/list/cursor/TagModelCursor;-><init>(Ljava/util/List;)V

    return-object p2
.end method
