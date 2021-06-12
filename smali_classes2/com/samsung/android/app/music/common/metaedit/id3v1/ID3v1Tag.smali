.class Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field final b:[B

.field final c:[B

.field final d:[B

.field final e:[B

.field final f:[B

.field final g:[B


# direct methods
.method private constructor <init>([B[B[B[B[B[B[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->a:[B

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->b:[B

    .line 31
    iput-object p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->c:[B

    .line 32
    iput-object p4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->d:[B

    .line 33
    iput-object p5, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->e:[B

    .line 34
    iput-object p6, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->f:[B

    .line 35
    iput-object p7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->g:[B

    return-void
.end method

.method static a([B[B[B[B[B[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;
    .locals 9

    .line 24
    new-instance v8, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;-><init>([B[B[B[B[B[B[B)V

    return-object v8
.end method


# virtual methods
.method a(I)[B
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 49
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->f:[B

    return-object p1

    .line 47
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->d:[B

    return-object p1

    .line 51
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->g:[B

    return-object p1

    .line 45
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->c:[B

    return-object p1

    .line 43
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->b:[B

    return-object p1

    .line 41
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->a:[B

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->f:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v1, "Version 1.0\n"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Version 1.1\n"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "title : "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->a:[B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nartist : "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->b:[B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nalbum : "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->c:[B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ngenre : "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->g:[B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nyear : "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->d:[B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntrack number : "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->f:[B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncomment : "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->e:[B

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
