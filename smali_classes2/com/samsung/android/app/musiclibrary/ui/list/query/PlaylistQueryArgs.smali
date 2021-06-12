.class public final Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->a:Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 14
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->uri:Landroid/net/Uri;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "name"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "display_order"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 51
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v0

    goto :goto_0

    :pswitch_0
    const-string p1, "is_sync=1"

    goto :goto_0

    :pswitch_1
    const-string p1, "is_sync=0"

    .line 24
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->selection:Ljava/lang/String;

    .line 29
    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->selectionArgs:[Ljava/lang/String;

    if-eqz p2, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/16 p1, 0xa

    if-ne p2, p1, :cond_1

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "date_recently_played DESC, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  COLLATE LOCALIZED "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong filter option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    const-string p1, "display_order"

    goto :goto_1

    :cond_3
    const-string p1, "name  COLLATE LOCALIZED "

    goto :goto_1

    :cond_4
    const-string p1, "date_added DESC"

    .line 30
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->orderBy:Ljava/lang/String;

    return-void

    .line 51
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x2

    :cond_0
    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    const/4 p2, 0x4

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(II)V

    return-void
.end method
