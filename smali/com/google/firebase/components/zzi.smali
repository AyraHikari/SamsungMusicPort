.class final synthetic Lcom/google/firebase/components/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/Map$Entry;

.field private final b:Lcom/google/firebase/events/Event;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/zzi;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/zzi;->b:Lcom/google/firebase/events/Event;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/zzi;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/zzi;-><init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/zzi;->a:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/zzi;->b:Lcom/google/firebase/events/Event;

    invoke-static {v0, v1}, Lcom/google/firebase/components/zzh;->a(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V

    return-void
.end method
