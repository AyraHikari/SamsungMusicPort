.class public final Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData$Companion;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->a:Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "playlistId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->c:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->a:Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData$Companion;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 3

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "playlistId"

    .line 15
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playlistTitle"

    .line 16
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
