.class final Lcom/google/android/gms/internal/measurement/zzyh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzyh$zza;,
        Lcom/google/android/gms/internal/measurement/zzyh$zzb;,
        Lcom/google/android/gms/internal/measurement/zzyh$zzc;,
        Lcom/google/android/gms/internal/measurement/zzyh$zzd;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lsun/misc/Unsafe;

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final d:Z

.field private static final e:Z

.field private static final f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

.field private static final g:Z

.field private static final h:Z

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:J

.field private static final p:J

.field private static final q:J

.field private static final r:J

.field private static final s:J

.field private static final t:J

.field private static final u:J

.field private static final v:J

.field private static final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 146
    const-class v0, Lcom/google/android/gms/internal/measurement/zzyh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->a:Ljava/util/logging/Logger;

    .line 147
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    .line 148
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzua;->b()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->c:Ljava/lang/Class;

    .line 149
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->c(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->d:Z

    .line 150
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->c(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->e:Z

    .line 151
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzua;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->d:Z

    if-eqz v0, :cond_1

    .line 155
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzyh$zzb;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzyh$zzb;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 156
    :cond_1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->e:Z

    if-eqz v0, :cond_3

    .line 157
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzyh$zza;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzyh$zza;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 159
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzyh$zzc;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzyh$zzc;-><init>(Lsun/misc/Unsafe;)V

    .line 160
    :cond_3
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    .line 161
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->g()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->g:Z

    .line 162
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->f()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->h:Z

    .line 163
    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->i:J

    .line 164
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->j:J

    .line 165
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->k:J

    .line 166
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->l:J

    .line 167
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->m:J

    .line 168
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->n:J

    .line 169
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->o:J

    .line 170
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->p:J

    .line 171
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->q:J

    .line 172
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->r:J

    .line 173
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->s:J

    .line 174
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->t:J

    .line 175
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->u:J

    .line 176
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->h()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 177
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    .line 178
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/16 v0, -0x1

    .line 179
    :goto_2
    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->v:J

    .line 180
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->w:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BJ)B
    .locals 3

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzyh;->i:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 4
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/Object;J)I
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->e(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static a(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzyh;->v:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->f(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static a(JB)V
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(JB)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;JB)V
    .locals 0

    .line 140
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->c(Ljava/lang/Object;JB)V

    return-void
.end method

.method static a(Ljava/lang/Object;JD)V
    .locals 6

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method static a(Ljava/lang/Object;JF)V
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method static a(Ljava/lang/Object;JI)V
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JJ)V
    .locals 6

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;JZ)V
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static a([BJB)V
    .locals 3

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzyh;->i:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method static a([BJJJ)V
    .locals 8

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a([BJJJ)V

    return-void
.end method

.method static a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->h:Z

    return v0
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 7
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static b(Ljava/lang/Object;J)J
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Ljava/lang/Object;JB)V
    .locals 0

    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->d(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Object;JZ)V
    .locals 0

    .line 144
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->d(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static b()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->g:Z

    return v0
.end method

.method static c()Lsun/misc/Unsafe;
    .locals 1

    .line 40
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyi;-><init>()V

    .line 41
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static c(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 120
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 123
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static synthetic c(Ljava/lang/Object;JZ)V
    .locals 0

    .line 145
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->e(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzua;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->c:Ljava/lang/Class;

    const-string v2, "peekLong"

    const/4 v3, 0x2

    .line 95
    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeLong"

    const/4 v4, 0x3

    .line 96
    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeInt"

    .line 97
    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekInt"

    .line 98
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByte"

    .line 99
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByte"

    .line 100
    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByteArray"

    const/4 v5, 0x4

    .line 101
    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    const-class v8, [B

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByteArray"

    .line 102
    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-class p0, [B

    aput-object p0, v5, v6

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    return v1
.end method

.method static c(Ljava/lang/Object;J)Z
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)F
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static synthetic d()J
    .locals 2

    .line 136
    sget-wide v0, Lcom/google/android/gms/internal/measurement/zzyh;->i:J

    return-wide v0
.end method

.method private static d(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 125
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 128
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static d(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->c(Ljava/lang/Object;JB)V

    return-void
.end method

.method static e(Ljava/lang/Object;J)D
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->d(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static e(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 134
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->d(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    .line 137
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzyh;->w:Z

    return v0
.end method

.method static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->f:Lcom/google/android/gms/internal/measurement/zzyh$zzd;

    .line 26
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static f()Z
    .locals 8

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    .line 48
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayBaseOffset"

    .line 49
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayIndexScale"

    .line 50
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    const/4 v4, 0x2

    .line 51
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    const/4 v5, 0x3

    .line 52
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    .line 53
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    .line 54
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getObject"

    .line 55
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putObject"

    .line 56
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzua;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "getByte"

    .line 59
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    .line 60
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getBoolean"

    .line 61
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putBoolean"

    .line 62
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getFloat"

    .line 63
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putFloat"

    .line 64
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getDouble"

    .line 65
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putDouble"

    .line 66
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 69
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzyh;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeArrayOperations"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic g(Ljava/lang/Object;J)B
    .locals 0

    .line 138
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh;->k(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static g()Z
    .locals 8

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyh;->b:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    .line 74
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    const/4 v4, 0x2

    .line 75
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->h()Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 78
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzua;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    const-string v2, "getByte"

    .line 80
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    .line 81
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    .line 82
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    .line 83
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    .line 84
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    .line 85
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "copyMemory"

    const/4 v5, 0x3

    .line 86
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "copyMemory"

    const/4 v6, 0x5

    .line 87
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v5

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 90
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzyh;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeByteBufferOperations"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic h(Ljava/lang/Object;J)B
    .locals 0

    .line 139
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh;->l(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static h()Ljava/lang/reflect/Field;
    .locals 3

    .line 106
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzua;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 110
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic i(Ljava/lang/Object;J)Z
    .locals 0

    .line 142
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh;->m(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Ljava/lang/Object;J)Z
    .locals 0

    .line 143
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh;->n(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static k(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 118
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static l(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 119
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static m(Ljava/lang/Object;J)Z
    .locals 0

    .line 130
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh;->k(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static n(Ljava/lang/Object;J)Z
    .locals 0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyh;->l(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
