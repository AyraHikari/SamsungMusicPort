.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mp4ItmfItem"
.end annotation


# static fields
.field private static final EMPTY:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;


# instance fields
.field final code:Ljava/lang/String;

.field final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->EMPTY:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->dataList:Ljava/util/List;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->code:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    .locals 1

    .line 97
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->EMPTY:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    return-object v0
.end method
