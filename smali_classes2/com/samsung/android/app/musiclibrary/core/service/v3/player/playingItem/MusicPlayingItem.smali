.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final audioId:J

.field private final context:Landroid/content/Context;

.field private data:Ljava/lang/String;

.field private final listCount:I

.field private final listPosition:I

.field private final meta$delegate:Lkotlin/Lazy;

.field private final options:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

.field private final playDirection:I

.field private final playingUri$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playingUri"

    const-string v4, "getPlayingUri()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "meta"

    const-string v4, "getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;III)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->audioId:J

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->options:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->listPosition:I

    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->listCount:I

    iput p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->playDirection:I

    .line 41
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$playingUri$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->playingUri$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->meta$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;JLcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v1, p8, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 39
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;-><init>(Landroid/content/Context;JLcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;III)V

    return-void
.end method

.method public static final synthetic access$getAudioId$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->audioId:J

    return-wide v0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getData$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->data:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "data"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getIntOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getListCount$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->listCount:I

    return p0
.end method

.method public static final synthetic access$getListPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->listPosition:I

    return p0
.end method

.method public static final synthetic access$getLongOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getLongOrZero(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getMeta$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->options:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    return-object p0
.end method

.method public static final synthetic access$getPlayDirection$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->playDirection:I

    return p0
.end method

.method public static final synthetic access$getStringOrEmpty(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrEmpty(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStringOrNull(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStringOrUnknown(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrUnknown(Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setData$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->data:Ljava/lang/String;

    return-void
.end method

.method private final getIntOrZero(Landroid/database/Cursor;I)I
    .locals 1

    .line 179
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final getIntOrZero(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    .line 181
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final getLongOrZero(Landroid/database/Cursor;I)J
    .locals 1

    .line 183
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private final getLongOrZero(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 1

    .line 185
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private final getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->meta$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    return-object v0
.end method

.method private final getPlayingUri()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->playingUri$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    return-object v0
.end method

.method private final getStringOrEmpty(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    .line 176
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    return-object p1
.end method

.method private final getStringOrEmpty(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 171
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 172
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    return-object p1
.end method

.method private final getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    .line 178
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 168
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getStringOrUnknown(Landroid/database/Cursor;Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p4, p1

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p1, "DefaultUiUtils.transUnknownString(context, text)"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p4
.end method

.method private final getStringOrUnknown(Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p4, p1

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p1, "DefaultUiUtils.transUnknownString(context, text)"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p4
.end method

.method static synthetic getStringOrUnknown$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Landroid/content/Context;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 152
    check-cast p4, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrUnknown(Landroid/database/Cursor;Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getStringOrUnknown$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 161
    check-cast p4, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrUnknown(Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->cancel(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getPlayingUri()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getPlayingUri()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->makeCache(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;J)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->reset(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
