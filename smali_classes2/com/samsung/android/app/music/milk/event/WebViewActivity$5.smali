.class synthetic Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 327
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->c:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->c:[I

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->c:[I

    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->SAMSUNG_MUSIC:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :catch_1
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->b:[I

    :try_start_2
    sget-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->b:[I

    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->NOTICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->b:[I

    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->RECOMMEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 332
    :catch_3
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    :try_start_4
    sget-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->DO_NOT_SHOW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->BACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_QUESTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SEND_LOG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
