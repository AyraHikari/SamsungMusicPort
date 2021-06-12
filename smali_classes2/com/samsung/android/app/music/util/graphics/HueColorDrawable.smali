.class public Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sput-object v0, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x653

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6b0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x70d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x74b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_4
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_5
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_6
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_7
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_8
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v0, "9d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto :goto_1

    :cond_1
    const-string v0, "7d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto :goto_1

    :cond_2
    const-string v0, "4d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const-string v0, "1d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v1, 0x3a

    const/16 v6, 0x73

    const/16 v7, 0xc4

    const/16 v8, 0x7a

    const/16 v9, 0x51

    const/16 v10, 0xfc

    const/16 v11, 0x5b

    const/16 v12, 0xff

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 93
    :pswitch_9
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0xf9

    .line 94
    invoke-static {v12, v5, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0xf7

    const/16 v5, 0x7f

    const/16 v6, 0xd5

    .line 95
    invoke-static {v12, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 87
    :pswitch_a
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0xf9

    .line 88
    invoke-static {v12, v5, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0xf7

    const/16 v5, 0x7f

    const/16 v6, 0xd5

    .line 89
    invoke-static {v12, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 81
    :pswitch_b
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    const/16 v7, 0xf5

    .line 82
    invoke-static {v12, v6, v1, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v5, v3

    const/16 v1, 0xb1

    const/16 v3, 0xf5

    .line 83
    invoke-static {v12, v9, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v5, v4

    invoke-direct {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 75
    :pswitch_c
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0x69

    const/16 v6, 0x8c

    const/16 v7, 0x2e

    .line 76
    invoke-static {v12, v7, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0x4d

    const/16 v5, 0x87

    .line 77
    invoke-static {v12, v7, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 69
    :pswitch_d
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0x42

    const/16 v6, 0x90

    const/16 v7, 0xfa

    .line 70
    invoke-static {v12, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0x5e

    const/16 v5, 0xa2

    .line 71
    invoke-static {v12, v3, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 63
    :pswitch_e
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    const/16 v6, 0xc7

    .line 64
    invoke-static {v12, v1, v6, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v5, v3

    const/16 v1, 0xf4

    const/16 v3, 0x9a

    const/16 v6, 0xc1

    .line 65
    invoke-static {v12, v1, v3, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v5, v4

    invoke-direct {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 57
    :pswitch_f
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0x2a

    const/16 v8, 0xce

    .line 58
    invoke-static {v12, v5, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0xab

    .line 59
    invoke-static {v12, v3, v6, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 51
    :pswitch_10
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0x28

    const/16 v6, 0x71

    const/16 v7, 0x23

    .line 52
    invoke-static {v12, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0x3f

    const/16 v5, 0x8a

    const/16 v6, 0x8b

    .line 53
    invoke-static {v12, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_2

    .line 45
    :pswitch_11
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0x7e

    const/16 v6, 0xdb

    const/16 v8, 0x46

    .line 46
    invoke-static {v12, v5, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0x11

    const/16 v5, 0xc2

    .line 47
    invoke-static {v12, v3, v7, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_2

    .line 39
    :pswitch_12
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v6, 0xb2

    const/16 v7, 0xfb

    .line 40
    invoke-static {v12, v7, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0x8f

    .line 41
    invoke-static {v12, v7, v8, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_2

    .line 33
    :pswitch_13
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v5, [I

    const/16 v6, 0x84

    .line 34
    invoke-static {v12, v12, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v3

    const/16 v2, 0x7c

    .line 35
    invoke-static {v12, v10, v2, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v4

    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_2

    .line 27
    :pswitch_14
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0xad

    const/16 v6, 0x22

    .line 28
    invoke-static {v12, v5, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0xcb

    const/16 v5, 0x55

    const/16 v6, 0x60

    .line 29
    invoke-static {v12, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_2

    .line 21
    :pswitch_15
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    const/16 v5, 0x44

    const/16 v6, 0x89

    .line 22
    invoke-static {v12, v10, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v2, v3

    const/16 v3, 0xfd

    const/16 v5, 0x38

    .line 23
    invoke-static {v12, v3, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :goto_2
    if-nez v0, :cond_5

    const-string v1, "HueColorDrawable"

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDrawable. drawable is null. maybe you put invalid hue set id. id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_5
    instance-of p0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p0, :cond_6

    .line 104
    move-object p0, v0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
