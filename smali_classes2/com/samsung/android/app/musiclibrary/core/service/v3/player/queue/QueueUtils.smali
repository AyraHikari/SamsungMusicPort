.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

.field private static final UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final convertHexToInt(CI)I
    .locals 3

    const-string v0, "0123456789ABCDEF"

    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt p1, v0, :cond_0

    const-string v0, "0123456789ABCDEF"

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt p1, v0, :cond_0

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr p1, v0

    shl-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const-string v0, "0123456789ABCDEF"

    const/16 v1, 0xa

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt p1, v0, :cond_1

    const-string v0, "0123456789ABCDEF"

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt p1, v0, :cond_1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    shl-int/2addr p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private final ensurePlayListCapacity([JI)[J
    .locals 2

    .line 114
    array-length v0, p1

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    .line 118
    new-array p2, p2, [J

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private final shrinkQueue([JI)[J
    .locals 2

    if-nez p2, :cond_0

    .line 124
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-array v0, p2, [J

    const/4 v1, 0x0

    .line 127
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final convertQueueToArray(Ljava/lang/String;)[J
    .locals 8

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object v0

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 148
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_2

    .line 75
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->ensurePlayListCapacity([JI)[J

    move-result-object v2

    int-to-long v4, v4

    .line 79
    aput-wide v4, v2, v3

    move v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_2

    .line 84
    :cond_2
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    invoke-direct {v7, v6, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->convertHexToInt(CI)I

    move-result v6

    if-gez v6, :cond_3

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p1

    .line 90
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    const-string v1, "saved queue is abnormal. return empty queue"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return-object p1

    :cond_3
    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->shrinkQueue([JI)[J

    move-result-object p1

    return-object p1
.end method

.method public final convertQueueToString([J)Ljava/lang/String;
    .locals 12

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 146
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-wide v5, p1, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    const-string v5, "0;"

    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    :goto_1
    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    const-wide/16 v9, 0xf

    and-long/2addr v9, v5

    const-string v11, "0123456789ABCDEF"

    long-to-int v9, v9

    .line 55
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    ushr-long/2addr v5, v9

    goto :goto_1

    :cond_1
    const/16 v5, 0x3b

    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created queue string in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getActivePlayerTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getActivePlayerType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "music"

    goto :goto_0

    :pswitch_0
    const-string p1, "spotify"

    goto :goto_0

    :pswitch_1
    const-string p1, "radio"

    goto :goto_0

    :pswitch_2
    const-string p1, "music"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLegalAgreeSettingKey()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;->getAGREED()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final printLog(Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    check-cast v0, Ljava/lang/String;

    const-string v0, "SMUSIC-SV"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueueUtils "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setActivePlayerType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x77221946

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x636ee25

    if-eq v0, v1, :cond_1

    const v1, 0x67413fb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_2
    const-string v0, "spotify"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x2

    .line 19
    :cond_3
    :goto_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->setActivePlayerType(I)V

    return-void
.end method

.method public final testGetRandomQueue(I)[J
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 139
    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/random/RandomKt;->a(J)Lkotlin/random/Random;

    move-result-object v2

    const-wide/16 v3, 0x0

    const v5, 0x7fffffff

    int-to-long v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lkotlin/random/Random;->a(JJ)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
