.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    const-string v0, "UNSET"

    .line 56
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v12, -0x1

    move-object/from16 v30, v1

    move-object v14, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v20

    move-object/from16 v28, v21

    move-object/from16 v29, v28

    move-object/from16 v31, v29

    move-wide/from16 v16, v4

    move-wide/from16 v18, v12

    const/4 v1, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v12, v0

    move-object/from16 v13, v31

    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "masksProperties"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "refId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "ind"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "ty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "tt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "tm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "sw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_2

    :sswitch_7
    const-string v4, "st"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "sr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_9
    const-string v4, "sh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_a
    const-string v4, "sc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_b
    const-string v4, "op"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_c
    const-string v4, "nm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_d
    const-string v4, "ks"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_e
    const-string v4, "ip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto :goto_2

    :sswitch_f
    const-string v4, "ef"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_2

    :sswitch_10
    const-string v4, "cl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto :goto_2

    :sswitch_11
    const-string v4, "w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto :goto_2

    :sswitch_12
    const-string v4, "t"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_2

    :sswitch_13
    const-string v4, "h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_2

    :sswitch_14
    const-string v4, "shapes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_15
    const-string v4, "parent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    move-object/from16 v2, p0

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_e

    .line 187
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object/from16 v2, p0

    goto/16 :goto_e

    :pswitch_1
    move-object/from16 v2, p0

    .line 184
    invoke-static {v2, v7, v3}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v31

    goto/16 :goto_e

    :pswitch_2
    move-object/from16 v2, p0

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v1, v4

    goto/16 :goto_e

    :pswitch_3
    move-object/from16 v2, p0

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v0, v4

    goto/16 :goto_e

    :pswitch_4
    move-object/from16 v2, p0

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->a()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v27, v4

    goto/16 :goto_e

    :pswitch_5
    move-object/from16 v2, p0

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->a()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v26, v4

    goto/16 :goto_e

    :pswitch_6
    move-object/from16 v2, p0

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v25, v4

    goto/16 :goto_e

    :pswitch_7
    move-object/from16 v2, p0

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v15, v4

    goto/16 :goto_e

    :pswitch_8
    move-object/from16 v2, p0

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 148
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v6, 0xdbf

    if-eq v3, v6, :cond_1

    goto :goto_5

    :cond_1
    const-string v3, "nm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_6

    :cond_2
    :goto_5
    const/4 v3, -0x1

    :goto_6
    if-eqz v3, :cond_3

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 151
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    const/4 v3, 0x0

    goto :goto_4

    .line 158
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    const/4 v3, 0x0

    goto :goto_3

    .line 160
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/LottieComposition;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_9
    move-object/from16 v2, p0

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 122
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v6, 0x61

    if-eq v4, v6, :cond_7

    const/16 v6, 0x64

    if-eq v4, v6, :cond_6

    goto :goto_9

    :cond_6
    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_a

    :cond_7
    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_a

    :cond_8
    :goto_9
    const/4 v3, -0x1

    :goto_a
    packed-switch v3, :pswitch_data_1

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 128
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v3

    move-object/from16 v29, v3

    .line 132
    :cond_9
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_b

    .line 135
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_8

    .line 125
    :pswitch_b
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->f(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v28

    goto :goto_8

    .line 141
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_e

    :pswitch_c
    move-object/from16 v2, p0

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 112
    :cond_c
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 113
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 115
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 118
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_e

    :pswitch_d
    move-object/from16 v2, p0

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 105
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 106
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/MaskParser;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 108
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_e

    :pswitch_e
    move-object/from16 v2, p0

    .line 101
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    aget-object v30, v3, v4

    goto/16 :goto_e

    :pswitch_f
    move-object/from16 v2, p0

    .line 98
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v21

    goto/16 :goto_e

    :pswitch_10
    move-object/from16 v2, p0

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    goto :goto_e

    :pswitch_11
    move-object/from16 v2, p0

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->a()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    move/from16 v23, v3

    goto :goto_e

    :pswitch_12
    move-object/from16 v2, p0

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->a()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    move/from16 v22, v3

    goto :goto_e

    :pswitch_13
    move-object/from16 v2, p0

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v18, v3

    goto :goto_e

    :pswitch_14
    move-object/from16 v2, p0

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 79
    sget-object v4, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 80
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    aget-object v14, v4, v3

    goto :goto_e

    .line 82
    :cond_f
    sget-object v14, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    goto :goto_e

    :pswitch_15
    move-object/from16 v2, p0

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    goto :goto_e

    :pswitch_16
    move-object/from16 v2, p0

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v16, v3

    goto :goto_e

    :pswitch_17
    move-object/from16 v2, p0

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    :goto_e
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    div-float v32, v0, v15

    div-float v33, v1, v15

    .line 201
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v32, v11

    if-lez v0, :cond_11

    .line 204
    new-instance v5, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v34, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v9, v5

    move/from16 v5, v34

    move-object v11, v6

    move-object/from16 v6, v35

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 205
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_11
    move-object v11, v6

    :goto_f
    const/4 v0, 0x0

    cmpl-float v1, v33, v0

    if-lez v1, :cond_12

    goto :goto_10

    .line 209
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->e()F

    move-result v0

    move/from16 v33, v0

    .line 210
    :goto_10
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 211
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v5, v32

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 212
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v0, 0x0

    .line 215
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move/from16 v5, v33

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 216
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 218
    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ai"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 219
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->a(Ljava/lang/String;)V

    .line 222
    :cond_14
    new-instance v32, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v32

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v12

    move-wide/from16 v4, v16

    move-object v6, v14

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v33, v11

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    move-object/from16 v21, v33

    move-object/from16 v22, v30

    move-object/from16 v23, v31

    invoke-direct/range {v0 .. v23}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v32

    :sswitch_data_0
    .sparse-switch
        -0x3b54f756 -> :sswitch_15
        -0x35db5b0e -> :sswitch_14
        0x68 -> :sswitch_13
        0x74 -> :sswitch_12
        0x77 -> :sswitch_11
        0xc69 -> :sswitch_10
        0xca1 -> :sswitch_f
        0xd27 -> :sswitch_e
        0xd68 -> :sswitch_d
        0xdbf -> :sswitch_c
        0xde1 -> :sswitch_b
        0xe50 -> :sswitch_a
        0xe55 -> :sswitch_9
        0xe5f -> :sswitch_8
        0xe61 -> :sswitch_7
        0xe64 -> :sswitch_6
        0xe79 -> :sswitch_5
        0xe80 -> :sswitch_4
        0xe85 -> :sswitch_3
        0x197df -> :sswitch_2
        0x675e90e -> :sswitch_1
        0x55ed639a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
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
        :pswitch_9
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
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static a(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 25

    move-object/from16 v2, p0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->b()Landroid/graphics/Rect;

    move-result-object v4

    .line 29
    new-instance v24, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v24

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v3, "__container"

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v11, v5

    invoke-direct {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 33
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v24
.end method
