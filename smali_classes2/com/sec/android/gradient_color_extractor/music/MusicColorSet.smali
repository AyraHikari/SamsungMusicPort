.class public final Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;
    }
.end annotation


# instance fields
.field private a:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;


# direct methods
.method public constructor <init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    return-void
.end method

.method public static a(I)Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;
    .locals 4

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [F

    .line 57
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 59
    aget p0, v0, p0

    const/4 v1, 0x1

    .line 60
    aget v1, v0, v1

    const/4 v2, 0x2

    .line 61
    aget v0, v0, v2

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_1

    cmpg-float v3, p0, v2

    if-gez v3, :cond_1

    .line 65
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_0

    .line 66
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_1:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    .line 68
    :cond_0
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_1D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    :cond_1
    const/high16 v3, 0x42340000    # 45.0f

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_3

    cmpg-float v2, p0, v3

    if-gez v2, :cond_3

    .line 71
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_2

    .line 72
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_2:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    .line 74
    :cond_2
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_2D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    :cond_3
    const/high16 v2, 0x428a0000    # 69.0f

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_4

    cmpg-float v3, p0, v2

    if-gez v3, :cond_4

    .line 77
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_3:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    :cond_4
    const/high16 v3, 0x43200000    # 160.0f

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_6

    cmpg-float v2, p0, v3

    if-gez v2, :cond_6

    .line 79
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_5

    .line 80
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_4:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    .line 82
    :cond_5
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_4D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    :cond_6
    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_8

    cmpg-float v3, p0, v2

    if-gez v3, :cond_8

    .line 85
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_7

    .line 86
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_5:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    .line 88
    :cond_7
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_5D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    :cond_8
    const/high16 v3, 0x43820000    # 260.0f

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_a

    cmpg-float v2, p0, v3

    if-gez v2, :cond_a

    .line 91
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_9

    .line 92
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_6:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    .line 94
    :cond_9
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_6D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto/16 :goto_0

    :cond_a
    const v2, 0x43898000    # 275.0f

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_c

    cmpg-float v3, p0, v2

    if-gez v3, :cond_c

    .line 97
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_b

    .line 98
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_7:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto :goto_0

    .line 100
    :cond_b
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_7D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto :goto_0

    :cond_c
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_d

    cmpg-float v2, p0, v3

    if-gez v2, :cond_d

    .line 103
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_8:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto :goto_0

    :cond_d
    cmpl-float v2, p0, v3

    if-ltz v2, :cond_f

    const/high16 v2, 0x43aa0000    # 340.0f

    cmpg-float v2, p0, v2

    if-gez v2, :cond_f

    .line 105
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_e

    .line 106
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_9:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto :goto_0

    .line 108
    :cond_e
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_9D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto :goto_0

    .line 111
    :cond_f
    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(FFF)Z

    move-result p0

    if-nez p0, :cond_10

    .line 112
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_1:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    goto :goto_0

    .line 114
    :cond_10
    new-instance p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_10D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {p0, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    :goto_0
    return-object p0
.end method

.method static a(FFF)Z
    .locals 0

    .line 131
    sget p0, Lcom/sec/android/gradient_color_extractor/music/ColorRuleConstants;->c:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    sget p0, Lcom/sec/android/gradient_color_extractor/music/ColorRuleConstants;->d:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static b(FFF)Z
    .locals 0

    .line 141
    sget p0, Lcom/sec/android/gradient_color_extractor/music/ColorRuleConstants;->a:F

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_1

    sget p0, Lcom/sec/android/gradient_color_extractor/music/ColorRuleConstants;->b:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static b(I)Z
    .locals 3

    const/4 v0, 0x3

    .line 135
    new-array v0, v0, [F

    .line 136
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 137
    aget p0, v0, p0

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->b(FFF)Z

    move-result p0

    return p0
.end method

.method static c()Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;
    .locals 2

    .line 123
    new-instance v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_7D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {v0, v1}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    return-object v0
.end method

.method static c(I)Z
    .locals 3

    const/4 v0, 0x3

    .line 145
    new-array v0, v0, [F

    .line 146
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 147
    aget v1, v0, p0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v0, v0, p0

    const/high16 v1, 0x43820000    # 260.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method static d()Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;
    .locals 2

    .line 127
    new-instance v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    sget-object v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->PRESET_9D:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    invoke-direct {v0, v1}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->color1:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet$PRESET;->color2:I

    return v0
.end method
