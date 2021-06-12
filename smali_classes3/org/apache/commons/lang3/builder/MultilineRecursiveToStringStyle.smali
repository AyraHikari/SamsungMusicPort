.class Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;
.super Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private indent:I

.field private spaces:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;-><init>()V

    const/4 v0, 0x2

    .line 75
    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    .line 78
    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method private resetIndent()V
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->setArrayStart(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->setArraySeparator(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->setArrayEnd(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method private spacer(I)Ljava/lang/StringBuilder;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, " "

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 118
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->accept(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 121
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 122
    invoke-static {p3, p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 124
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2

    .line 177
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 178
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 179
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 180
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 181
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2

    .line 186
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 188
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 189
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 190
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 2

    .line 195
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 196
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 197
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 198
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 199
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2

    .line 204
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 206
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 207
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 208
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2

    .line 159
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 160
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 161
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 162
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 163
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 2

    .line 150
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 151
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 152
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 153
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 132
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 134
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2

    .line 168
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 169
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 170
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 171
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 172
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2

    .line 213
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 214
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 215
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 216
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 217
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 141
    iget v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 143
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    iget p2, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->indent:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 145
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    return-void
.end method
