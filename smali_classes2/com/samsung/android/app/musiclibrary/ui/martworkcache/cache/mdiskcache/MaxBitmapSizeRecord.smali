.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field volatile a:I

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "CLEAN"

    const-string v1, "DIRTY"

    const-string v2, "DELETE"

    .line 14
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    .line 21
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->b(I)V

    const-string v0, "MaxBitmapSize"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    return-void
.end method

.method private b(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    return v0
.end method

.method public a(I)V
    .locals 2

    if-lez p1, :cond_1

    .line 35
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 36
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    const/4 p1, 0x1

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->b(I)V

    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 54
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x2

    .line 42
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->b(I)V

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;

    .line 76
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxBitmapSizeRecord{state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxBitmapSize="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MaxBitmapSizeRecord;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
