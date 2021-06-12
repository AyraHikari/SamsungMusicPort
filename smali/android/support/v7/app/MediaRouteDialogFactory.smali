.class public Landroid/support/v7/app/MediaRouteDialogFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sDefault:Landroid/support/v7/app/MediaRouteDialogFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-direct {v0}, Landroid/support/v7/app/MediaRouteDialogFactory;-><init>()V

    sput-object v0, Landroid/support/v7/app/MediaRouteDialogFactory;->sDefault:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 46
    sget-object v0, Landroid/support/v7/app/MediaRouteDialogFactory;->sDefault:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object v0
.end method


# virtual methods
.method public onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    new-instance v0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;-><init>()V

    return-object v0
.end method

.method public onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;-><init>()V

    return-object v0
.end method
