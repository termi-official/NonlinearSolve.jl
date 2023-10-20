# Put in a separate page so it can be used by SciMLDocs.jl

pages = ["index.md",
    "Getting Started with Nonlinear Rootfinding in Julia" => "tutorials/getting_started.md",
    "Tutorials" => Any["Code Optimization for Small Nonlinear Systems" => "tutorials/code_optimization.md",
        "Handling Large Ill-Conditioned and Sparse Systems" => "tutorials/large_systems.md",
        "Symbolic System Definition and Acceleration via ModelingToolkit" => "tutorials/modelingtoolkit.md",
        "tutorials/small_compile.md",
        "tutorials/termination_conditions.md",
        "tutorials/iterator_interface.md"],
    "Basics" => Any["basics/NonlinearProblem.md",
        "basics/NonlinearFunctions.md",
        "basics/solve.md",
        "basics/NonlinearSolution.md",
        "basics/TerminationCondition.md",
        "basics/FAQ.md"],
    "Solver Summaries and Recommendations" => Any["solvers/NonlinearSystemSolvers.md",
        "solvers/BracketingSolvers.md",
        "solvers/SteadyStateSolvers.md",
        "solvers/NonlinearLeastSquaresSolvers.md",
        "solvers/LineSearch.md"],
    "Detailed Solver APIs" => Any["api/nonlinearsolve.md",
        "api/simplenonlinearsolve.md",
        "api/minpack.md",
        "api/nlsolve.md",
        "api/sundials.md",
        "api/steadystatediffeq.md"],
]
