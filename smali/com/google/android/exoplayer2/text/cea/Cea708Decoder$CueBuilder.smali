.class final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[Z

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/text/SpannableStringBuilder;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 796
    invoke-static {v0, v0, v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a:I

    .line 797
    invoke-static {v1, v1, v1, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    const/4 v2, 0x3

    .line 798
    invoke-static {v1, v1, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIII)I

    move-result v3

    sput v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c:I

    const/4 v3, 0x7

    .line 814
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->d:[I

    .line 819
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->e:[I

    .line 824
    new-array v4, v3, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->f:[I

    .line 829
    new-array v4, v3, [Z

    fill-array-data v4, :array_3

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->g:[Z

    .line 832
    new-array v4, v3, [I

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v5, v4, v1

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c:I

    const/4 v6, 0x1

    aput v5, v4, v6

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v5, v4, v0

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v5, v4, v2

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c:I

    const/4 v7, 0x4

    aput v5, v4, v7

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    const/4 v8, 0x5

    aput v5, v4, v8

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    const/4 v9, 0x6

    aput v5, v4, v9

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->h:[I

    .line 838
    new-array v4, v3, [I

    fill-array-data v4, :array_4

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->i:[I

    .line 845
    new-array v4, v3, [I

    fill-array-data v4, :array_5

    sput-object v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->j:[I

    .line 850
    new-array v3, v3, [I

    sget v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v4, v3, v1

    sget v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v1, v3, v6

    sget v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v1, v3, v0

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v0, v3, v2

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    aput v0, v3, v7

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c:I

    aput v0, v3, v8

    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c:I

    aput v0, v3, v9

    sput-object v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->k:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    .line 883
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    .line 884
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b()V

    return-void
.end method

.method public static a(IIII)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1215
    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(III)I

    .line 1216
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(III)I

    .line 1217
    invoke-static {p2, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(III)I

    .line 1218
    invoke-static {p3, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(III)I

    const/16 v0, 0xff

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/16 p3, 0xff

    goto :goto_0

    :pswitch_1
    const/4 p3, 0x0

    goto :goto_0

    :pswitch_2
    const/16 p3, 0x7f

    :goto_0
    const/4 v2, 0x1

    if-le p0, v2, :cond_0

    const/16 p0, 0xff

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-le p1, v2, :cond_1

    const/16 p1, 0xff

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-le p2, v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 1240
    :goto_3
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b(III)I
    .locals 1

    const/4 v0, 0x0

    .line 1211
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(C)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 1075
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->g()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1078
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 1079
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    .line 1081
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    if-eq p1, v0, :cond_1

    .line 1082
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    .line 1084
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    if-eq p1, v0, :cond_2

    .line 1085
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    .line 1087
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    if-eq p1, v0, :cond_3

    .line 1088
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    .line 1091
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->v:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->u:I

    if-ge p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    .line 1092
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_7

    .line 1093
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1096
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_7
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1060
    iget p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->G:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0xa

    .line 1061
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    .line 1063
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->G:I

    return-void
.end method

.method public a(III)V
    .locals 5

    .line 1026
    iget p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1027
    iget p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->D:I

    if-eq p3, p1, :cond_0

    .line 1028
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->D:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    .line 1029
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1028
    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1033
    :cond_0
    sget p3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a:I

    if-eq p1, p3, :cond_1

    .line 1034
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    .line 1035
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->D:I

    .line 1038
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    if-eq p1, v1, :cond_2

    .line 1039
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->F:I

    if-eq p1, p2, :cond_2

    .line 1040
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->F:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    .line 1041
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1040
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1045
    :cond_2
    sget p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    if-eq p2, p1, :cond_3

    .line 1046
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    .line 1047
    iput p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->F:I

    :cond_3
    return-void
.end method

.method public a(IIIZZII)V
    .locals 0

    .line 1001
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-nez p4, :cond_1

    .line 1003
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    iget-object p7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    .line 1004
    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    .line 1003
    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1005
    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 1008
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    .line 1011
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    if-eq p1, p3, :cond_2

    if-nez p5, :cond_3

    .line 1013
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    iget-object p6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    .line 1014
    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    .line 1013
    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1015
    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    .line 1018
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    :cond_3
    :goto_1
    return-void
.end method

.method public a(IIZIIII)V
    .locals 0

    .line 986
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->z:I

    .line 991
    iput p7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->w:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 927
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->o:Z

    return-void
.end method

.method public a(ZZZIZIIIIIII)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move/from16 v2, p11

    move/from16 v3, p12

    const/4 v4, 0x1

    .line 937
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->n:Z

    move v5, p1

    .line 938
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->o:Z

    .line 939
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->v:Z

    move v5, p4

    .line 940
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->p:I

    move/from16 v5, p5

    .line 941
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->q:Z

    move/from16 v5, p6

    .line 942
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->r:I

    move/from16 v5, p7

    .line 943
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->s:I

    move/from16 v5, p10

    .line 944
    iput v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->t:I

    .line 947
    iget v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->u:I

    add-int/lit8 v6, p8, 0x1

    if-eq v5, v6, :cond_2

    .line 948
    iput v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->u:I

    :goto_0
    if-eqz v1, :cond_0

    .line 951
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->u:I

    if-ge v5, v6, :cond_1

    :cond_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    .line 952
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2

    .line 953
    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 959
    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->x:I

    if-eq v1, v2, :cond_3

    .line 960
    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->x:I

    add-int/lit8 v1, v2, -0x1

    .line 964
    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->h:[I

    aget v2, v2, v1

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c:I

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->g:[Z

    aget-boolean v6, v6, v1

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->e:[I

    aget v8, v8, v1

    sget-object v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->f:[I

    aget v9, v9, v1

    sget-object v10, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->d:[I

    aget v1, v10, v1

    move-object p1, p0

    move p2, v2

    move p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v1

    invoke-virtual/range {p1 .. p8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIZIIII)V

    :cond_3
    if-eqz v3, :cond_4

    .line 971
    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->y:I

    if-eq v1, v3, :cond_4

    .line 972
    iput v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->y:I

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 977
    sget-object v7, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->j:[I

    aget v7, v7, v1

    sget-object v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->i:[I

    aget v8, v8, v1

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIIZZII)V

    .line 979
    sget v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a:I

    sget-object v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->k:[I

    aget v1, v3, v1

    sget v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(III)V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    .line 888
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()V
    .locals 2

    .line 892
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c()V

    const/4 v0, 0x0

    .line 894
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->n:Z

    .line 895
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->o:Z

    const/4 v1, 0x4

    .line 896
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->p:I

    .line 897
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->q:Z

    .line 898
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->r:I

    .line 899
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->s:I

    .line 900
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->t:I

    const/16 v1, 0xf

    .line 901
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->u:I

    const/4 v1, 0x1

    .line 902
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->v:Z

    .line 903
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->w:I

    .line 904
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->x:I

    .line 905
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->y:I

    .line 906
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->z:I

    .line 908
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->D:I

    .line 909
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->F:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    .line 915
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    .line 916
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    .line 917
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    .line 918
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    const/4 v0, 0x0

    .line 919
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->G:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->n:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 931
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->o:Z

    return v0
.end method

.method public f()V
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public g()Landroid/text/SpannableString;
    .locals 6

    .line 1101
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->m:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1106
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1107
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->A:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1111
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    if-eq v2, v4, :cond_1

    .line 1112
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->B:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1116
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    if-eq v2, v4, :cond_2

    .line 1117
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->D:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->C:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1121
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    if-eq v2, v4, :cond_3

    .line 1122
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->F:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->E:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1127
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public h()Lcom/google/android/exoplayer2/text/cea/Cea708Cue;
    .locals 14

    .line 1131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1136
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1139
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1140
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 1141
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->g()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1149
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->w:I

    packed-switch v1, :pswitch_data_0

    .line 1162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected justification value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :pswitch_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 1156
    :pswitch_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 1153
    :pswitch_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v3, v1

    .line 1167
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->q:Z

    if-eqz v1, :cond_2

    .line 1168
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->s:I

    int-to-float v1, v1

    const/high16 v4, 0x42c60000    # 99.0f

    div-float/2addr v1, v4

    .line 1169
    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->r:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_2

    .line 1171
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->s:I

    int-to-float v1, v1

    const/high16 v4, 0x43510000    # 209.0f

    div-float/2addr v1, v4

    .line 1172
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->r:I

    int-to-float v4, v4

    const/high16 v5, 0x42940000    # 74.0f

    div-float v5, v4, v5

    :goto_2
    const v4, 0x3f666666    # 0.9f

    mul-float v1, v1, v4

    const v6, 0x3d4ccccd    # 0.05f

    add-float v7, v1, v6

    mul-float v5, v5, v4

    add-float v4, v5, v6

    .line 1186
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->t:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    .line 1188
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->t:I

    rem-int/lit8 v1, v1, 0x3

    if-ne v1, v6, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    .line 1195
    :goto_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->t:I

    div-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    .line 1197
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->t:I

    div-int/lit8 v1, v1, 0x3

    if-ne v1, v6, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x2

    .line 1203
    :goto_4
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->z:I

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b:I

    if-eq v1, v5, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    .line 1205
    :goto_5
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    const/4 v5, 0x0

    const/4 v11, 0x1

    iget v12, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->z:I

    iget v13, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->p:I

    move-object v1, v0

    move v6, v8

    move v8, v9

    move v9, v11

    move v11, v12

    move v12, v13

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
