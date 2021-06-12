.class public Lcom/samsung/android/app/music/model/playhistory/MyChartList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARTIST_RECENTLY:Ljava/lang/String; = "RA"

.field public static final ARTIST_THROUGHOUT:Ljava/lang/String; = "TA"

.field public static final GENRE_RECENTLY:Ljava/lang/String; = "RG"

.field public static final GENRE_THROUGHOUT:Ljava/lang/String; = "TG"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/MyChart;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChartList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/MyChart;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChartList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChartList;->type:Ljava/lang/String;

    return-object v0
.end method
