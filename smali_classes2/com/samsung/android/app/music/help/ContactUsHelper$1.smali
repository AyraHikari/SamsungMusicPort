.class synthetic Lcom/samsung/android/app/music/help/ContactUsHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/help/ContactUsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 136
    invoke-static {}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->values()[Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->b:[I

    sget-object v2, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ASK:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->b:[I

    sget-object v3, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ERROR:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->b:[I

    sget-object v4, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->OPINION:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    :catch_2
    invoke-static {}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->values()[Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->a:[I

    :try_start_3
    sget-object v3, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->a:[I

    sget-object v4, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->CONTACT_US:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->a:[I

    sget-object v3, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->SEND_FEEDBACK:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->DIRECT_FEEDBACK:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
