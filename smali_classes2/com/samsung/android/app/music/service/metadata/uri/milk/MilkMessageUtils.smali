.class public final Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a:Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)I
    .locals 2

    const-string v0, "com.sec.android.app.music.KEY_SHOP_AGE_LIMIT"

    const-string v1, "19"

    .line 68
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static final a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0b022d

    const v2, 0x7f0b01f5

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    const/16 v3, 0x2710

    if-ge p1, v3, :cond_1

    .line 54
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_0
    const p1, 0x7f0b01fe

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1
    const p1, 0x7f0b01ed

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2
    const p1, 0x7f0b01c1

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_3
    const p1, 0x7f0b027f

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 21
    :sswitch_4
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p1, 0x7f0b0280

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026up_certification_expired)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a:Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    .line 21
    array-length p0, v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "java.lang.String.format(format, *args)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :sswitch_5
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p1, 0x7f0b0283

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026_popup_not_certification)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a:Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    .line 17
    array-length p0, v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "java.lang.String.format(format, *args)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :sswitch_6
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p1, 0x7f0b0282

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026explicit_popup_not_adult)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a:Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    .line 25
    array-length p0, v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "java.lang.String.format(format, *args)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :sswitch_7
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p1, 0x7f0b0284

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026plicit_popup_not_sign_in)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a:Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    .line 29
    array-length p0, v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "java.lang.String.format(format, *args)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const p1, 0x7f0b01e0

    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :sswitch_9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const p1, 0x7f0b01e4

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :sswitch_b
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    const p1, 0x7f0b0260

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    const p1, 0x7f0b021f

    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    :sswitch_e
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_d
        -0x3 -> :sswitch_c
        -0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x1389 -> :sswitch_9
        0x138a -> :sswitch_8
        0x138b -> :sswitch_e
        0x2711 -> :sswitch_7
        0x2712 -> :sswitch_6
        0x2715 -> :sswitch_5
        0x2716 -> :sswitch_4
        0x2717 -> :sswitch_3
        0x32c8 -> :sswitch_2
        0x36b0 -> :sswitch_1
        0x3a98 -> :sswitch_0
    .end sparse-switch
.end method
