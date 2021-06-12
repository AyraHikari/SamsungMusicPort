.class public Lcom/samsung/android/app/music/browse/BrowseUiType$ListTypeConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseUiType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTypeConverter"
.end annotation


# direct methods
.method public static a(I)I
    .locals 1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_2

    const v0, 0x20000006

    if-eq p0, v0, :cond_1

    const v0, 0x20000009

    if-eq p0, v0, :cond_0

    const v0, 0x20000050

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x78

    return p0

    :pswitch_1
    const/16 p0, 0x3c

    return p0

    :pswitch_2
    const/16 p0, 0x1e

    return p0

    :pswitch_3
    const/16 p0, 0x14

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    const/16 p0, 0x64

    return p0

    :pswitch_7
    const/16 p0, 0x6e

    return p0

    :cond_0
    const/16 p0, 0x32

    return p0

    :cond_1
    const/16 p0, 0x28

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20000002
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20000072
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const p0, 0x20000077

    return p0

    :sswitch_1
    const p0, 0x20000003

    return p0

    :sswitch_2
    const p0, 0x20000002

    return p0

    :sswitch_3
    const p0, 0x20000050

    return p0

    :sswitch_4
    const p0, 0x20000076

    return p0

    :sswitch_5
    const p0, 0x20000009

    return p0

    :sswitch_6
    const p0, 0x20000006

    return p0

    :sswitch_7
    const p0, 0x20000075

    return p0

    :sswitch_8
    const p0, 0x20000074

    return p0

    :sswitch_9
    const p0, 0x20000073

    return p0

    :sswitch_a
    const p0, 0x20000072

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0xa -> :sswitch_9
        0x14 -> :sswitch_8
        0x1e -> :sswitch_7
        0x28 -> :sswitch_6
        0x32 -> :sswitch_5
        0x3c -> :sswitch_4
        0x5a -> :sswitch_3
        0x64 -> :sswitch_2
        0x6e -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
