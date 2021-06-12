.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/app/music/advertise/AdPlayType;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;->INSTANCE:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dummyPatterns$2;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/advertise/AdPlayType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Lcom/samsung/android/app/music/advertise/AdPlayType;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
