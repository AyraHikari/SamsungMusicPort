.class public final Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

.field private static final o:Lkotlin/Lazy;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/Boolean;

.field private final j:Ljava/lang/Boolean;

.field private final k:Z

.field private final l:Z

.field private m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    .line 39
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion$EMPTY$2;->INSTANCE:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion$EMPTY$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->o:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;-><init>(Lcom/samsung/android/app/music/model/base/TrackInfoModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->d:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->e:Ljava/util/List;

    const-string v1, ""

    .line 13
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLargeSizeAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->g:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getMvId()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->h:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isMvExplicit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->i:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isDownloadable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->j:Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasAvailableAlbum()Z

    move-result v2

    if-ne v2, v1, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isCelebTrack()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->k:Z

    if-eqz p1, :cond_9

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasAvailableArtist()Z

    move-result v2

    if-ne v2, v1, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isCelebTrack()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->l:Z

    .line 22
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->m:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->n:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/model/base/TrackInfoModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 7
    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;-><init>(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V

    return-void
.end method

.method public static final synthetic n()Lkotlin/Lazy;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->o:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->m:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->e:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/Boolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final h()Ljava/lang/Boolean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->k:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->l:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->m:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->n:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 29
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    goto :goto_2

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->f:Ljava/lang/String;

    return-object v0
.end method
