.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$DefaultImpls;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method
