.class synthetic Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SONG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PLAYLIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ARTIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ALBUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
